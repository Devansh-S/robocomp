//******************************************************************
// 
//  Generated by IDSL to IDL Translator
//  
//  File name: PatternBasedDifferentialRobot.ice
//  Source: PatternBasedDifferentialRobot.idsl
//  
//******************************************************************   
#ifndef ROBOCOMPPATTERNBASEDDIFFERENTIALROBOT_ICE
#define ROBOCOMPPATTERNBASEDDIFFERENTIALROBOT_ICE

module RoboCompPatternBasedDifferentialRobot{
	exception HardwareFailedException{string what;};
	struct TBaseSpeed{
		float adv;
					float rot;
				};
	struct TBasePose{
		float z;
					float x;
					float alpha;
				};
	struct TBaseState{
		TBasePose pose;
		TBaseSpeed speed;
	};
	struct datagetBaseStateout{
		TBasePose pose;
		TBaseSpeed speed;
	};
	struct datasetOdometerin{
		float z;
					float x;
					float alpha;
				};
	struct dataresetOdometerin{
		float z;
					float x;
					float alpha;
				};
	struct datasetSpeedBasein{
		float adv;
					float rot;
				};
	struct datastopBasein{
		float adv;
					float rot;
				};

	interface PatternBasedDifferentialRobot{
		void  getBaseState(out datagetBaseStateout state)throws HardwareFailedException;
		void  setOdometer(datasetOdometerin pose)throws HardwareFailedException;
		void  resetOdometer(dataresetOdometerin zeroPose)throws HardwareFailedException;
		void  setSpeedBase(datasetSpeedBasein speed)throws HardwareFailedException;
		void  stopBase(datastopBasein zeroSpeed)throws HardwareFailedException;
	};
};
  
#endif