function dict --description 'curl dict.org for given argument'
    command curl dict://dict.org/d:$argv[1]
end
