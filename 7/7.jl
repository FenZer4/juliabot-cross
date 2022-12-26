using HorizonSideRobots
r=Robot(animate=true, "robotfunc/untitled-7.sit")

function zad7!(robot,side)
    side1 = side
    side_for_move = right(side1)
    n = 0
    while isborder(robot,side1)
        n+=1
        along!(robot,side_for_move,n)
        side_for_move = inverse(side_for_move)
    end
end

function along!(robot,side,n_steps)
    for _ in 1:n_steps
        move!(robot,side)
    end
end


left(side::HorizonSide)::HorizonSide = HorizonSide(mod(Int(side) + 3 , 4)) 
right(side::HorizonSide)::HorizonSide = HorizonSide(mod(Int(side) + 1 , 4)) 
inverse(side::HorizonSide)::HorizonSide = HorizonSide(mod(Int(side) + 2 , 4)) 

zad7!(r,Ost)