using HorizonSideRobots

function zad3!(robot)
    putmarker!(r)
    while !isborder(r, Nord)
        putmarker_border!(r, Ost)
        move!(r, Nord)
        putmarker!(r)
        putmarker_border!(r, West)
    end
end 