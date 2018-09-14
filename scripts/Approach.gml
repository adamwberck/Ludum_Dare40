/// Approach(start, end, shift);

if(argument2<0){
    show_error("Illegal argument in Approach. Shift is negative",true);
}

if (argument0 < argument1)
    return min(argument0 + argument2, argument1); 
else
    return max(argument0 - argument2, argument1);
