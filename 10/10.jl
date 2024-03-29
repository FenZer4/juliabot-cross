using HorizonSideRobots



function chess!(robot,N)
    num_steps_Sud,num_steps_West=find_corner!(robot)
    do_chess!(robot,N)
    go_to_corner!(robot)
    go_to_home!(robot,num_steps_Sud,num_steps_West)
end


function find_corner!(robot)            #передвигает робота в угол + корды
    num_steps_Sud=0
    num_steps_West=0

    while (!isborder(robot,Sud))
        move!(robot,Sud)
        num_steps_Sud+=1
    end

    while (!isborder(robot,West))
        move!(robot,West)
        num_steps_West+=1
    end

    return num_steps_Sud, num_steps_West

end

function go_home!(robot,num_steps_Sud,num_steps_West)  #в нач точку

    for _i in 1:num_steps_Sud
        move!(robot,Nord)
    end

    for _i in 1:num_steps_West
        move!(robot,Ost)
    end

end

function do_chess!(robot,N)                    #создание рисунка
if (N>11)
    return
end
while (!isborder(robot,Nord))
        for _i in 1:N                    #Рисуем N строк 
            while (!isborder(robot,Ost))
                point!(robot,N)
                moving!(robot,N)
            end
            while (!isborder(robot,West))
                move!(robot,West)
            end
                try_move!(robot,Nord)
        end

        for _i in 1:N
            while (!isborder(robot,Ost))
                moving!(robot,N)
                point!(robot,N)
            end
            while (!isborder(robot,West))
                move!(robot,West)
            end
            try_move!(robot,Nord)
        end
end

end

function point!(robot,N)  #Рисуем часть точки
        for _i in 1:N
            putmarker!(robot)
            if (try_move!(robot,Ost)==false)
                return
            end
        end
    
end

function moving!(robot,N)   #Расстояние между частями точки
    for _i in 1:N
        try_move!(robot,Ost)
    end
end

function try_move!(robot,side)
    if (!isborder(robot,side))
        move!(robot,side)
        return true
    else
        return false
    end
end

function go_to_corner!(robot)
    while (!isborder(robot,Sud))
        move!(robot,Sud)
    end

    while (!isborder(robot,West))
        move!(robot,West)
    end
end
chess!(r,11)