#pragma once
#include "Component.h"
#include "Transform.h"
#include "Dimple.h"
#include "Ball.h"
#include <list>

using namespace Brickware;
using namespace Core;
using namespace Math;
using namespace Graphics;
class Board
{
	
private: 
	std::list<Ball> balls;
	std::list<Dimple> dimples;
	Ball* selectedBall;
public:
	Board();
	~Board();

	// add Ball to baord
	void addBall(Ball b);

	// get/selected selected 
	void setSelected(Ball b);
	void getSelected(Ball b);

	

	
};

