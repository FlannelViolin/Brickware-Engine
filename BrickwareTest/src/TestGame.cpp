#include "TestGame.h"

TestGame::TestGame() : Game(800, 600)
{
}

bool TestGame::init()
{
	bool good = Game::init();

	if (!good)
		return false;

	//Load shader
	Shader* shader = new Shader("Shaders/VertexShader", "Shaders/PixelShader");

	//Load textures
	Texture* boxTexture = new Texture("Textures/boxTexture.bmp");
	Texture* brickTexture = new Texture("Textures/brickTexture.bmp");
	Texture* castleTexture = new Texture("Textures/castleAOTexture.bmp");
	Texture* grassTexture = new Texture("Textures/grassTexture.bmp");
	Texture* stoneTexture = new Texture("Textures/stoneTexture.bmp");
	
	//Setup materials
	Material* castleMaterial = new Material(shader);
	castleMaterial->setTexture("diffuseTexture", castleTexture);

	Material* sphereMaterial = new Material(shader);
	sphereMaterial->setTexture("diffuseTexture", brickTexture);
	Material* cubeMaterial = new Material(shader);
	cubeMaterial->setTexture("diffuseTexture", boxTexture);

	Material* squareMaterial = new Material(shader);
	squareMaterial->setTexture("diffuseTexture", grassTexture);
	Material* circleMaterial = new Material(shader);
	circleMaterial->setTexture("diffuseTexture", stoneTexture);
	Material* triangleMaterial = new Material(shader);
	triangleMaterial->setTexture("diffuseTexture", stoneTexture);

	//Load basic meshes
	Mesh* castleMesh = new Mesh("Models/castle.obj");

	Mesh* sphereMesh = new Mesh("Models/sphere.obj");
	Mesh* cubeMesh = new Mesh("Models/cube.obj");

	Mesh* squareMesh = new Mesh("Models/square.obj");
	Mesh* circleMesh = new Mesh("Models/circle.obj");
	Mesh* triangleMesh = new Mesh("Models/triangle.obj");

	//Create Lights
	GameObject* light1 = new GameObject();
	Light* light1Comp = new Light();
	light1Comp->setDiffuseColor(Vector3(0, 1, 0));
	light1Comp->setSpecularColor(Vector3(0, 1, 0));

	light1->getTransform()->setPosition(Vector3(1.0f, 0.1f, 0.0f));
	light1->addComponent(light1Comp);

	GameObject* light2 = new GameObject();
	Light* light2Comp = new Light();
	light2Comp->setDiffuseColor(Vector3(1, 0, 0));
	light2Comp->setSpecularColor(Vector3(1, 0, 0));

	light2->getTransform()->setPosition(Vector3(-1.0f, 0.1f, 0.0f));
	light2->addComponent(light2Comp);

	GameObject* light3 = new GameObject();
	Light* light3Comp = new Light();
	light3Comp->setDiffuseColor(Vector3(0, 0, .5f));
	light3Comp->setSpecularColor(Vector3(0, 0, .5f));

	light3->getTransform()->setPosition(Vector3(0.0f, 1.0f, 0.0f));
	light3->addComponent(light3Comp);

	//Create Objects
	GameObject* castle = new GameObject();
	castle->getTransform()->setPosition(Vector3(0.0f, -1.0f, 0.0f));
	castle->addComponent(castleMaterial);
	castle->addComponent(new MeshRenderer(castleMesh));

	GameObject* sphere = new GameObject();
	sphere->getTransform()->setPosition(Vector3(-6.0f, 1.0f, -5.0f));
	sphere->addComponent(sphereMaterial);
	sphere->addComponent(new MeshRenderer(sphereMesh));
	Spin* sphereSpin = new Spin();
	sphereSpin->rotationDelta = Vector3(0.05f, 0.05f, 0.0f);
	sphere->addComponent(sphereSpin);
	GameObject* cube = new GameObject();
	cube->getTransform()->setPosition(Vector3(-3.0f, 1.0f, -5.0f));
	cube->addComponent(cubeMaterial);
	cube->addComponent(new MeshRenderer(cubeMesh));
	Spin* cubeSpin = new Spin();
	cubeSpin->rotationDelta = Vector3(0.05f, 0.0f, 0.0f);
	cube->addComponent(cubeSpin);
	cube->addComponent(new BoxCollider());

	GameObject* square = new GameObject();
	square->getTransform()->setPosition(Vector3(0.0f, 1.0f, -5.0f));
	square->addComponent(squareMaterial);
	square->addComponent(new MeshRenderer(squareMesh));
	Spin* squareSpin = new Spin();
	squareSpin->rotationDelta = Vector3(0.0f, 0.05f, 0.0f);
	square->addComponent(squareSpin);
	GameObject* circle = new GameObject();
	circle->getTransform()->setPosition(Vector3(3.0f, 1.0f, -5.0f));
	circle->addComponent(circleMaterial);
	circle->addComponent(new MeshRenderer(circleMesh));
	Spin* circleSpin = new Spin();
	circleSpin->rotationDelta = Vector3(0.01f, 0.0f, 0.05f);
	circle->addComponent(circleSpin);
	GameObject* triangle = new GameObject();
	triangle->getTransform()->setPosition(Vector3(6.0f, 1.0f, -5.0f));
	triangle->addComponent(triangleMaterial);
	triangle->addComponent(new MeshRenderer(triangleMesh));
	Spin* triangleSpin = new Spin();
	triangleSpin->rotationDelta = Vector3(0.05f, 0.0f, 0.05f);
	triangle->addComponent(triangleSpin);

	//Create Camera
	Camera* cameraComp = new Camera(50, 0.1f, 0.1f, 0.1f, 100.0f);
	cameraComp->setActive();

	GameObject* camera = new GameObject();
	camera->addComponent(new Material(shader));
	camera->addComponent(cameraComp);
	camera->addComponent(new Spawner(cube));

	for (unsigned int i = 0; i < gameObjects.size(); i++)
		gameObjects[i]->Start();

	return true;
}

void TestGame::updateScene()
{
	if (Input::getKeyDown(KeyCode::escape))
		running = false;

#ifdef _DEBUG
	if (Input::getKeyDown(KeyCode::F1) && dKeyDown == false)
	{
		Debug::Debugging = !Debug::Debugging;
		dKeyDown = true;
	}
	else if (Input::getKeyUp(KeyCode::F1))
	{
		dKeyDown = false;
	}
#endif

	for (unsigned int i = 0; i < gameObjects.size(); i++)
		gameObjects[i]->Update();
}

void TestGame::renderScene()
{
	for (unsigned int i = 0; i < gameObjects.size(); i++)
		gameObjects[i]->OnRender();

	//Test primitive drawing
	/*
	if (Debug::Debugging)
	{
		Primitive::SetPointSize(10.0f);
		Primitive::SetColor(Vector4(1.0f, 0.0f, 0.0f, 1.0f));
		Primitive::DrawPoint(Vector3(0, 0, 0));
		Primitive::DrawPoint(Vector3(-0.5f, -0.5f, -0.5f));

		Primitive::SetColor(Vector4(0, 1, 0, 1));
		Primitive::SetLineWidth(5.0f);
		Primitive::DrawLine(Vector3(0, 0, 0), Vector3(-0.5f, -0.5f, -0.5f));
	}
	*/	
}

TestGame::~TestGame()
{
}
