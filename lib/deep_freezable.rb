module DeepFreezable
  def deep_freeze(array_or_hash)
    case array_or_hash
    when Array
      #配列の各要素をfreeze
      array_or_hash.each do |element|
        element.freeze
      end
    when Hash
      #配列自身をfreeze（かつこれ自身がメソッドの戻り値となる）
      array_or_hash.each do |key, value|
        key.freeze
        value.freeze
      end
    end
    array_or_hash.freeze
  end
end