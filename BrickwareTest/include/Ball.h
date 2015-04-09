#pragma once
#include "Component.h"
#include "Transform.h"
#include "Dimple.h"

using namespace Brickware;
using namespace Core;
using namespace Math;
using namespace Graphics;


class Ball
{

private:
	Material* color;
	Dimple* currentDimple;
	// board will have a list of ALL BALLS ON THE BAORD apaprently and which ball is currently selected
	//Board* board;

public:
	Ball();
	~Ball();
};

