#define BRICKWARE_GRAPHICS_EXPORTS

#include "RenderingManager.h"

using namespace Brickware;
using namespace Graphics;

//Statics
Material* RenderingManager::currentMaterial;
std::vector<Renderable> RenderingManager::renderables;
std::vector<Light*> RenderingManager::lights;

void RenderingManager::Initialize()
{
	
}

void RenderingManager::AddLight(Light* light)
{
	lights.push_back(light);
}
void RenderingManager::UseMaterial(Material* material)
{
	currentMaterial = material;
}
void RenderingManager::DrawMesh(Mesh* mesh)
{
	Renderable renderable;
	renderable.mesh = mesh;
	renderable.material = currentMaterial;

	renderables.push_back(renderable);
}

void RenderingManager::Render()
{
	//Render every renderable object
	for (unsigned int i = 0; i < renderables.size(); i++)
	{
		//Send light data to the renderable material
		for (unsigned int j = 0; j < lights.size(); j++)
		{
			lights[j]->Render(renderables[i].material);
		}

#ifdef GL_SUPPORT
		RenderGL(renderables[i]);
#endif
#ifdef D3D_SUPPORT
		RenderD3D(renderables[i]);
#endif
	}

	lights.clear();
	renderables.clear();
}

void RenderingManager::Destroy()
{

}