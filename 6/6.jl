using HorizonSideRobots

function zad6!(r::Robot)
    while isborder(r, HorizonSide(3)) == false
        move!(r, HorizonSide(3))
    end
    putmarker!(r)
    
    while isborder(r, HorizonSide(0)) == false
        move!(r, HorizonSide(0))
    end
    putmarker!(r)
    
    while isborder(r, HorizonSide(1)) == false
        move!(r, HorizonSide(1))
    end
    putmarker!(r)
    
    while isborder(r, HorizonSide(2)) == false
        move!(r, HorizonSide(2))
    end
    putmarker!(r)

end 
zad6!(r)


#r=Robot(15,15; animate=true)