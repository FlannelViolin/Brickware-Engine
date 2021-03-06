#define BRICKWARE_GRAPHICS_EXPORTS

#include "Texture.h"

using namespace Brickware;
using namespace Graphics;
using namespace Utility;

Texture::Texture(char* textureFileName)
{
	//TODO: check file name once we support multiple file namess
	loadBMP(textureFileName);

	bufferTexture();
}

void Texture::bufferTexture()
{
#ifdef D3D_SUPPORT
	bufferD3D();
#else
	bufferGL();
#endif
}

void Texture::bindTexture()
{
#ifdef D3D_SUPPORT
	bindD3D();
#else
	bindGL();
#endif
}

void Texture::freeTexture()
{
#ifdef D3D_SUPPORT
	freeD3D();
#else
	freeGL();
#endif
}

unsigned char* Texture::getPixels(){ return pixels; }

void Texture::loadBMP(char* textureFileName)
{
	char* bmpBytes = Utils::textFileRead(textureFileName);

	if (bmpBytes == NULL)
	{
		std::cout << "Error loading: " << textureFileName << std::endl;
		return;
	}

	//Check to see if this is a valid image
	//We check the first byte of the image; if it's not a B, C, I or P than this is not a valid BMP
	char headerField = *bmpBytes;

	if (headerField == 'B' || headerField == 'C' || headerField == 'I' || headerField == 'P')
	{
		//Parse the BMP header for the important data we need
		int pixelArrayLocation = *(int*)(bmpBytes + 10);

		width = *(int*)(bmpBytes + 18);
		height = *(int*)(bmpBytes + 22);

		colorDepth = *(short*)(bmpBytes + 28);
		compressionType = *(int*)(bmpBytes + 30);

		int bytesPerPixel = colorDepth / 8;

		int rowSize = ((colorDepth * width + 31) / 32) * 4;
		int pixelArraySize = width * height * 4; //Size of the BMP pixel array in bytes

		//Calculate row padding; each row must have a size that is a multiple of 4 bytes
		//Not really necessary for 24 bbp
		//int rowPadding = (width * bytesPerPixel) % 4;

		pixels = new unsigned char[pixelArraySize];

		//Load the colors into the pixels array based on color depth
		if (colorDepth == 24)
		{
			//Even though there is no alpha in 24bpp BMPs DirectX does not support RGB without alpha
			//So we will manually add an alpha value of 255;
			textureType = TextureType::RGBA;
			int loopCounter = 0;

			for (int i = 0; i < pixelArraySize; i+= 4)
			{
				char r, g, b;

				//Gives us an offset of 3 for every 4 of the loop
				int pixelOffset = i - loopCounter;

				b = *(char*)(bmpBytes + pixelArrayLocation + pixelOffset) ;
				g = *(char*)(bmpBytes + pixelArrayLocation + pixelOffset + 1);
				r = *(char*)(bmpBytes + pixelArrayLocation + pixelOffset + 2);

				pixels[i] = r;
				pixels[i + 1] = g;
				pixels[i + 2] = b;
				pixels[i + 3] = 255; //Alpha

				loopCounter++;
			}
		}
		else
		{
			std::cout << "Color Depth not 24bpp" << std::endl;
			std::cout << "BMPs with color depth of " << colorDepth << " bpp are not supported yet" << std::endl;
		}
	}

	delete bmpBytes;
}

Texture::~Texture()
{
	delete pixels;
}
