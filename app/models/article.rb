class Article <ApplicationRecord

validates:titile , presence:true ,length: {minimum: 3,maximum: 10}
validates:description , presence:true ,length: {minimum: 3,maximum: 100}

end