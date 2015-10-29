/*
 * ChoiceAlgorithms.cpp
 *
 *  Created on: Oct 26, 2015
 *      Author: sceik
 */

#include "ChoiceAlgorithms.h"

ChoiceAlgorithms::ChoiceAlgorithms() {
	// TODO Auto-generated constructor stub

}

ChoiceAlgorithms::~ChoiceAlgorithms() {
	// TODO Auto-generated destructor stub
}
int ChoiceAlgorithms::random(int segmentNumber, int offset, VideoInfo& videoInfo){
	int to_ret = 0;
	do{
		to_ret =   segmentNumber + ( std::rand() % ( offset + 1 ) );
	}while(videoInfo.checkSegment(to_ret));

	return to_ret;
}

int ChoiceAlgorithms::fixed(int segmentNumber, int offset, VideoInfo& videoInfo){
	int to_ret = 0;
	to_ret =   segmentNumber + offset;
	while(videoInfo.checkSegment(to_ret)){
		to_ret++;
	}

	return to_ret;
}