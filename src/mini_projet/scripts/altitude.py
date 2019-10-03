#!/usr/bin/env python
import rospy
from sensor_msgs.msg import NavSatFix

def callback(data):
    # rospy.loginfo(rospy.get_caller_id() + "I heard %s", data.data)
    # altitude_str = "Hello, I mesure %s" %data.altitude
    pub = rospy.Publisher('altitude_pub', NavSatFix,queue_size=10)
    #pub.publish(data.altitude)
    rate=rospy.Rate(10)
    data=data.altitude
    print data


def altitude(): 

    # In ROS, nodes are uniquely named. If two nodes with the same
    # name are launched, the previous one is kicked off. The
    # anonymous=True flag means that rospy will choose a unique
    # name for our 'listener' node so that multiple listeners can
    # run simultaneously.
    rospy.init_node('altitude', anonymous=True)
    rospy.Subscriber('/bebop/fix', NavSatFix, callback)
    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    altitude()