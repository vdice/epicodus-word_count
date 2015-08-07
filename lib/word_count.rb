class String
  define_method(:word_count) do |key|
    key.empty? ? 0 : scan(key).count()
  end
end
