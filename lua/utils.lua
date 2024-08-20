

extract_and_flatten = function(array, key)
    result = {}
    for _, dict in pairs(array) do
        
        local value = dict[key]

        if value then        
            if type(value) == "table" then
                for _, current_value in ipairs(value) do
                    table.insert(result, current_value)
                end
            else
                table.insert(result, value)
            end
        end
    end

    return result
end




return {
     extract_and_flatten = extract_and_flatten,
}

