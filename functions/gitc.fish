function gitc --description 'git commit with signing'
    command git commit -S -m "$argv"
end
