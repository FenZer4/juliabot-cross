using HorizonSideRobots

function zad4!(robot)
    putmarker!(r)
    while !isborder(r, Nord)
        move!(r, Ost)
        move!(r, Nord)
        putmarker!(r)
    end
    while !isborder(r, West)
        move!(r, West)
    end
    putmarker!(r)
    while !isborder(r, Sud)
        move!(r, Ost)
        move!(r, Sud)
        putmarker!(r)
    end
end