#!/usr/bin/env python
import rospy
from geometry_msgs.msg import Twist
from sensor_msgs.msg import Joy
from std_msgs.msg import Empty
from mini_projet.srv import ModeSurveillance

def callback(data):
    # rospy.loginfo(rospy.get_caller_id() + "I heard %s", data.data)
    # altitude_str = "Hello, I mesure %s" %data.altitude
    # pub = rospy.Publisher('altitude_pub', Joy,queue_size=10)
    #pub.publish(data.altitude)
    rate=rospy.Rate(10)
    buttons=data.buttons
    axes=data.axes
    print buttons
    print axes


    upBtn = buttons[7]
    downBtn = buttons[5]

    rotLeft = buttons[4]
    rotRight = buttons[6]

    leftRightBtn = axes[0]
    frontBackBtn = axes[1]

    resetBtn = buttons[0] # button number 1 on the remote
    landBtn = buttons[1] # number 2
    takeOff = buttons[2] # number 3
    changeMode = buttons[3] #number 4

    #up and down
    if downBtn == 1 :
      print("Down")
      pub_down=rospy.Publisher('/bebop/cmd_vel', Twist,queue_size=10)
      twist=Twist()
      twist.linear.z=-1
      pub_down.publish(twist)
    
    if upBtn == 1 :
      print("Up")
      pub_up=rospy.Publisher('/bebop/cmd_vel', Twist,queue_size=10)
      twist=Twist()
      twist.linear.z=+1
      pub_up.publish(twist)

    #Fleches directionelles    
    if leftRightBtn == 1 :
      print("Left")
      pub_left=rospy.Publisher('/bebop/cmd_vel', Twist,queue_size=10)
      twist=Twist()
      twist.linear.y=+1
      pub_left.publish(twist)


    if leftRightBtn == -1 :
      print("Right")
      pub_right=rospy.Publisher('/bebop/cmd_vel', Twist,queue_size=10)
      twist=Twist()
      twist.linear.y=-1
      pub_right.publish(twist)


    if frontBackBtn == 1 :
        print("up")
        pub_front=rospy.Publisher('/bebop/cmd_vel', Twist,queue_size=10)
        twist=Twist()
        twist.linear.x=+1
        pub_front.publish(twist)


    if frontBackBtn == -1 :
      print("down")
      pub_back=rospy.Publisher('/bebop/cmd_vel', Twist,queue_size=10)
      twist=Twist()
      twist.linear.x=-1
      pub_back.publish(twist)

    #Left and right rotation

    if rotLeft == 1 :
      print("rotLeft")
      pub_rotLeft=rospy.Publisher('/bebop/cmd_vel', Twist,queue_size=10)
      twist=Twist()
      twist.angular.z=0.5
      pub_rotLeft.publish(twist)

    
    if rotRight == 1 :
      print("rotRight")
      pub_rotRight=rospy.Publisher('/bebop/cmd_vel', Twist,queue_size=10)
      twist=Twist()
      twist.angular.z=-0.5
      pub_rotRight.publish(twist)

    #Take off land reset

    if landBtn == 1 :
        print("land")
        pub_land=rospy.Publisher('/bebop/land',Empty, queue_size=10)
        pub_land.publish(Empty())

    if resetBtn == 1 :
        print("RESET")
        pub_reset=rospy.Publisher('/bebop/reset',Empty, queue_size=10)
        pub_reset.publish(Empty())


    if takeOff == 1 :
        print('takeoff')
        pub_takeoff=rospy.Publisher('/bebop/takeoff',Empty, queue_size=10)
        pub_takeoff.publish(Empty())

    if changeMode == 1 :
        print('change mode')
        rate=rospy.Rate(10)
        handleService()

def handleService():
    rospy.wait_for_service('activate_surveillance')
    try:
      activate_surveillance = rospy.ServiceProxy('activate_surveillance', ModeSurveillance)
      resp1 = activate_surveillance()
      return resp1.modeSurveillance

    except rospy.ServiceException, e:
        print "Service call failed: %s"%e


def handle_surveillance(req):
    print('handle surveillance!!!!')
    return True





def command(): 

    # In ROS, nodes are uniquely named. If two nodes with the same
    # name are launched, the previous one is kicked off. The
    # anonymous=True flag means that rospy will choose a unique
    # name for our 'listener' node so that multiple listeners can
    # run simultaneously.
    rospy.init_node('command', anonymous=True)
    rospy.Subscriber('/joy', Joy, callback)
    modeLoisirSrv=rospy.Service('activate_loisir', ModeLoisir, )
    modeSurveillanceSrv=rospy.Service('activate_surveillance', ModeSurveillance, handle_surveillance )
    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    command()

