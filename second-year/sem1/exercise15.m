means = [Mean1,Mean2,Mean3,Mean4,Mean5]
errors = [Error1,Error2,Error3,Error4,Error5]

xBest = sum(means/errors.^2)/sum(1./(errors.^2))
errorBest = (sum(1./(errors.^2)))^(-1/2)