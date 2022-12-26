using HorizonSideRobots

function zad1!(robot)
    for side in (Nord, West, Sud, Ost)
        n = numsteps_putmarkers!(robot, side)
        along!(robot, inverse(side), n)
    end
    putmarker!(robot)
end 