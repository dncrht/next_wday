class Date

  def next_wday(wday = 0)
    wday = 7 if wday.zero?
    if self.wday < wday
      self + wday - self.wday
    else
      self + 7 - (self.wday - wday)
    end
  end

  def prev_wday(wday = 0)
    if wday < self.wday
      self - (self.wday - wday)
    else
      self - (7 - (wday - self.wday))
    end
  end
end