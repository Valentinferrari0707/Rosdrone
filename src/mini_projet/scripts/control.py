#!/usr/bin/env python
import rospy
from geometry_msgs.msg import Twist
from sensor_msgs.msg import Joy
from std_msgs.msg import Empty
from mini_projet.srv import ModeSurveillance, ModeLoisir, ModeLoisirResponse, ModeSurveillanceResponse


# Gerent les reponses des services pour activer ou desactiver le mode Surveillance
def handle_loisir(req):
    global mode
    loisir_enable = True
    print("handleLoisir", mode)
    if (mode == 'loisir'):
        loisir_enable = True
    else:
        loisir_enable = False    
    return ModeLoisirResponse(loisir_enable)


def handle_surveillance(req):
    global mode    
    surveillance_enable = True
    print("handleSurveillance", mode)    
    if (mode == 'surveillance'):
        surveillance_enable = True
    else:
        surveillance_enable = False    
    return ModeSurveillanceResponse(surveillance_enable)


# Callback subscriber au topic /joy 
def callback(data):
    
    global mode
    rate=rospy.Rate(10)
    buttons=data.buttons
    axes=data.axes
    # print buttons
    # print axes

    # Buttons definition, (cf conditions en dessous pour correspondance avec les bouttons de la manette )
    upBtn = buttons[7]
    downBtn = buttons[5]

    rotLeft = buttons[4]
    rotRight = buttons[6]

    leftRightBtn = axes[0]
    frontBackBtn = axes[1]

    resetBtn = buttons[0] 
    landBtn = buttons[1] 
    takeOff = buttons[2] 
    changeMode = buttons[3] 

    #up and down (respectivement touches R2 & R1 sur la manette)
    if downBtn == 1 and mode =='loisir':
      print("Down")
      pub_down=rospy.Publisher('/bebop/cmd_vel', Twist,queue_size=10)
      twist=Twist()
      twist.linear.z=-1
      pub_down.publish(twist)
    
    if upBtn == 1 and mode =='loisir':
      print("Up")
      pub_up=rospy.Publisher('/bebop/cmd_vel', Twist,queue_size=10)
      twist=Twist()
      twist.linear.z=+1
      pub_up.publish(twist)

    #Fleches directionelles    (touches du pad directionnel)
    if leftRightBtn == 1 and mode =='loisir':
      print("Left")
      pub_left=rospy.Publisher('/bebop/cmd_vel', Twist,queue_size=10)
      twist=Twist()
      twist.linear.y=+1
      pub_left.publish(twist)

    if leftRightBtn == -1 and mode =='loisir':
      print("Right")
      pub_right=rospy.Publisher('/bebop/cmd_vel', Twist,queue_size=10)
      twist=Twist()
      twist.linear.y=-1
      pub_right.publish(twist)

    if frontBackBtn == 1 and mode =='loisir':
        print("up")
        pub_front=rospy.Publisher('/bebop/cmd_vel', Twist,queue_size=10)
        twist=Twist()
        twist.linear.x=+1
        pub_front.publish(twist)

    if frontBackBtn == -1 and mode =='loisir':
      print("down")
      pub_back=rospy.Publisher('/bebop/cmd_vel', Twist,queue_size=10)
      twist=Twist()
      twist.linear.x=-1
      pub_back.publish(twist)

    #Left and right rotation (touches L1 & L2 sur la manette)

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

    #Actions 
    #Boutton 2
    if landBtn == 1 :
        print("land")
        pub_land=rospy.Publisher('/bebop/land',Empty, queue_size=10)
        pub_land.publish(Empty())
    
    #Boutton 1
    if resetBtn == 1 :
        print("RESET")
        pub_reset=rospy.Publisher('/bebop/reset',Empty, queue_size=10)
        pub_reset.publish(Empty())

    #Boutton 3
    if takeOff == 1 :
        print('takeoff')
        pub_takeoff=rospy.Publisher('/bebop/takeoff',Empty, queue_size=10)
        pub_takeoff.publish(Empty())

    #Boutton 4
    if changeMode == 1 :
        print('change mode')
        rate=rospy.Rate(10)
        mode_loisir = rospy.ServiceProxy('mode_loisir', ModeLoisir)  
        mode_surveillance = rospy.ServiceProxy('mode_surveillance', ModeSurveillance) 
        respLoisir = mode_loisir()
        respSurveillance = mode_surveillance()  

        print(respLoisir.modeLoisir)      
        print(respSurveillance.modeSurveillance)      
        

        if (respLoisir.modeLoisir) :
            mode = 'surveillance'
            
        if (respSurveillance.modeSurveillance) :
            mode = 'loisir'
            
    if mode == 'surveillance':
        pub_rotLeft=rospy.Publisher('/bebop/cmd_vel', Twist,queue_size=1)
        twist=Twist()
        twist.angular.z=0.5
        pub_rotLeft.publish(twist)
    
    print("mode",mode)






def command(): 

    global mode
    mode = 'loisir'
    #Node & services initialisation, subscription to /joy topic to get buttons changes 
    rospy.init_node('command', anonymous=True) 
    rospy.Subscriber('/joy', Joy, callback)
    rospy.Service('mode_loisir', ModeLoisir, handle_loisir)
    rospy.Service('mode_surveillance', ModeSurveillance, handle_surveillance)
    rospy.spin()

if __name__ == '__main__':
    command()

