def full_name(first, *rest)
  rest.reduce(first) {
    |result, sur_name| result + ' ' + sur_name
    }
end