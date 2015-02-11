#include "Texture.h"

#ifdef GL_SUPPORT
void Texture::bufferGL()
{
	//don't buffer if it wasn't loaded properly
	if (width < 0 || height < 0)
		return;

	glGenTextures(1, &glTexture);
	glBindTexture(GL_TEXTURE_2D, glTexture);

	if(textureType == TextureType::RGB)
		glTextureType = GL_RGB;

	//Load texture data
	glTexImage2D(GL_TEXTURE_2D, 0, glTextureType, width, height, 0, glTextureType, GL_UNSIGNED_BYTE, pixels);

	//Setup mipmaps and parameters
	glGenerateMipmap(GL_TEXTURE_2D);
	//glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
	//glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);

	//Unbind texture
	glBindTexture(GL_TEXTURE_2D, 0);
}

void Texture::bindGL()
{
	glBindTexture(GL_TEXTURE_2D, glTexture);
}

void Texture::freeGL()
{
	glBindTexture(GL_TEXTURE_2D, 0);
}
#endif