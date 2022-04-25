def checkAir(samples, threshold) 
  dirty_samples = 0
  samples.each { |sample| sample === "dirty" ? dirty_samples += 1 : nil }
  puts (dirty_samples.to_f / samples.length().to_f)
  return (dirty_samples.to_f / samples.length().to_f) > threshold ? "polluted" : "clean"
end

puts (checkAir(
  ['clean', 'clean', 'dirty', 'clean', 'dirty', 'clean', 'clean', 'dirty', 'clean', 'dirty'],
  0.3
))

puts (checkAir(
  ['dirty', 'dirty', 'dirty', 'dirty', 'clean'],
  0.25
))

puts (checkAir(
  ['clean', 'dirty', 'clean', 'dirty', 'clean', 'dirty', 'clean'],
  0.9
))