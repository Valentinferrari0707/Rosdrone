#!/usr/bin/env python
import rospy
from sensor_msgs.msg import NavSatFix
from std_msgs.msg import Int32


# Callback subsciber au topic /bebop/fix pour publier l'altitude mesuree dans un topic /altitude
def callback(data):
    dataAltitude=data.altitude
    print dataAltitude
    altiPub = rospy.Publisher('/altitude',Int32, NavSatFix,queue_size=10)    
    altiPub.publish(dataAltitude) 


def altitude(): 

    rospy.init_node('altitude', anonymous=True)
    rospy.Subscriber('/bebop/fix', NavSatFix, callback)
    rospy.spin()

if __name__ == '__main__':
    altitude()
