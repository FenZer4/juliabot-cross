module sdasfa
#include("HorizonSideRobots.jl")
#using .HorizonSideRobots
#r = Robot(7, 7;animate=true)
# move!(r, Ost)
# move!(r, Ost)
# move!(r, Ost)
# for i in 0:6
#     putmarker!(r)
#     if isborder(r, Nord) == false
#         move!(r, Nord)        
#     end
# end
# move!(r, West)
# move!(r, West)
# move!(r, West)
# move!(r, Sud)
# move!(r, Sud)
# move!(r, Sud)
# for i in 0:6
#     putmarker!(r)
#     if isborder(r, Ost) == false
#         move!(r, Ost)        
#     end
# end
cross!(r)
end