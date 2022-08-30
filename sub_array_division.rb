def birthday(s, d, m)
    matches = 0
    (0..(s.length() - m)).to_a.each do |start|
        segment_sum = 0
        (1..m).to_a.each do |i|
            segment_sum += s[start + i - 1]
        end
        matches += 1 if segment_sum === d
    end
    matches
end