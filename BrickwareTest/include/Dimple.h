#pragma once
#include "Dimple.h"
#include "Ball.h"
#include <list>

using namespace Brickware;
using namespace Core;
using namespace Math;
using namespace Graphics;

enum Direction{
	LEFT = 0,
	UP_LEFT = 1,
	UP_RIGHT = 2,
	RIGHT = 3,
	DOWN_RIGHT = 4,
	DOWN_LEFT = 5
};

struct Neighbor{
	Dimple dimple;
	Direction direction;

};

class Dimple
{

private:
	Board* board;
	std::list<Neighbor> neighbors;
public:
	Dimple();
	~Dimple();
};

