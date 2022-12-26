using HorizonSideRobots

function zad2!(robot)
    for side in (Ost, Nord, West, Sud)
        while !isborder(robot, side)
            move!(r, side)
            putmarker!(r)
        end
    end
end