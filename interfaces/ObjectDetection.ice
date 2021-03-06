//******************************************************************
//
//  Generated by RoboCompDSL
//
//  File name: ObjectDetection.ice
//  Source: ObjectDetection.idsl
//
//******************************************************************
#ifndef ROBOCOMPOBJECTDETECTION_ICE
#define ROBOCOMPOBJECTDETECTION_ICE
module RoboCompObjectDetection
{
	sequence <string> StringVector;
	struct ObjectType
	{
		 string label;
		 float tx;
		 float ty;
		 float tz;
		 float rx;
		 float ry;
		 float rz;
		 float minx;
		 float miny;
		 float minz;
		 float maxx;
		 float maxy;
		 float maxz;
	};
	sequence <ObjectType> ObjectVector;
	interface ObjectDetection
	{
		bool findObjects (StringVector objectsTofind, out ObjectVector objects);
	};
};

#endif
