def get_bones_and_rating(dog)
  ratings = dog.bones.pluck(:rating)
  count = ratings.length
  if ratings.length == 0
    average = 0
  else
    average = ratings.inject(0.0) { |sum, el| sum + el } / ratings.length
  end
  {'id' => dog.id, 'bones_quantity' => count, 'average_rating' => average}
end