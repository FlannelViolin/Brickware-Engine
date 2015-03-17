#ifndef MATERIAL_H
#define MATERIAL_H

#include "BrickwareCoreDLL.h"

#include "Shader.h"

#ifdef GL_SUPPORT
#include <GL/glew.h>

#ifdef _WIN32
#define GLFW_DLL
#endif

#define GLFW_INCLUDE_GLU
#include <GLFW/glfw3.h>
#endif

#include "Component.h"
#include "Utils.h"
#include "Texture.h"
#include "Camera.h"

#include "Matrix4.h"
#include "Vector3.h"
#include "Vector4.h"

#include <map>

class Material : public Component
{
public:
	BRICKWARE_CORE_API Material(Shader* shader);

	BRICKWARE_CORE_API void bindShader();
	BRICKWARE_CORE_API void freeShader();

#ifdef D3D_SUPPORT
	std::vector<ID3D11Buffer*> getConstantBuffers();
	std::vector<char*> getConstantBufferData();
#endif

	BRICKWARE_CORE_API virtual Component* Clone() override;

	BRICKWARE_CORE_API void setVector4(char* valueName, Vector4 value);
	BRICKWARE_CORE_API void setVector3(char* valueName, Vector3 value);
	BRICKWARE_CORE_API void setVector2(char* valueName, Vector2 value);

	BRICKWARE_CORE_API void setInt(char* valueName, int value);
	BRICKWARE_CORE_API void setFloat(char* valueName, float value);
	BRICKWARE_CORE_API void setDouble(char* valueName, double value);

	BRICKWARE_CORE_API void setMatrix4(char* valueName, Matrix4 value);
	BRICKWARE_CORE_API void setMatrix3(char* valueName, Matrix3 value);

	BRICKWARE_CORE_API void setTexture(char* textureName, Texture* texture);

	BRICKWARE_CORE_API ~Material();

private:
	Shader* shader;

	std::map<std::string, Texture*> textureMap;

	//Default texture to be loaded once and passed by default to every material
	static BRICKWARE_CORE_API Texture* defaultTexture;

#ifdef GL_SUPPORT
	BRICKWARE_CORE_API void setVector4GL(char* valueName, Vector4 value);
	BRICKWARE_CORE_API void setVector3GL(char* valueName, Vector3 value);
	BRICKWARE_CORE_API void setVector2GL(char* valueName, Vector2 value);

	BRICKWARE_CORE_API void setIntGL(char* valueName, int value);
	BRICKWARE_CORE_API void setFloatGL(char* valueName, float value);
	BRICKWARE_CORE_API void setDoubleGL(char* valueName, double value);

	BRICKWARE_CORE_API void setMatrix4GL(char* valueName, Matrix4 value);
	BRICKWARE_CORE_API void setMatrix3GL(char* valueName, Matrix3 value);
#endif

#ifdef D3D_SUPPORT
	BRICKWARE_CORE_API void setVector4D3D(char* valueName, Vector4 value);
	BRICKWARE_CORE_API void setVector3D3D(char* valueName, Vector3 value);
	BRICKWARE_CORE_API void setVector2D3D(char* valueName, Vector2 value);

	BRICKWARE_CORE_API void setIntD3D(char* valueName, int value);
	BRICKWARE_CORE_API void setFloatD3D(char* valueName, float value);
	BRICKWARE_CORE_API void setDoubleD3D(char* valueName, double value);

	BRICKWARE_CORE_API void setMatrix4D3D(char* valueName, Matrix4 value);
	BRICKWARE_CORE_API void setMatrix3D3D(char* valueName, Matrix3 value);
#endif

};

#endif
