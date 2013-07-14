class DateTime

  def next_wday(wday)
    self.to_date.next_wday(wday)
  end

  def prev_wday(wday)
    self.to_date.prev_wday(wday)
  end
end