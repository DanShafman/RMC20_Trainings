#!/usr/bin/env python

import rospy
from advanced_ros_demo.msg import Testdata

def talker():
    pub = rospy.Publisher('robot', Testdata, queue_size=10)
    rospy.init_node('talker', anonymous=True)
    rate = rospy.Rate(2)

    while not rospy.is_shutdown():
        outmsg = Testdata()
        outmsg.size = 9
        outmsg.name = "testname"

        pub.publish(outmsg)
        rate.sleep()

if __name__ == "__main__":
    talker()
