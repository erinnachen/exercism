class Bob
  def hey(remark)
    return "Whoa, chill out!" if shouting?(remark) && has_chars?(remark)
    return "Sure." if question?(remark)
    return  "Fine. Be that way!" if silence?(remark)
    "Whatever."
  end

  def shouting?(remark)
    remark.upcase == remark
  end

  def question?(remark)
    remark[-1] == '?'
  end

  def has_chars?(remark)
    !!(remark=~/[a-zA-Z]/)
  end

  def silence?(remark)
    remark.strip.empty?
  end
end
