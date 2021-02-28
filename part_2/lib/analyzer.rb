class Analyzer

  #atributos
  attr_reader :csv, :hashes, :test

  #construtor
  def initialize(csv)
    @csv = csv
    @hashes = line_split()
  end

  #metodos
  def test()
    i = 0
    hashes.each do |hash|
      password = hash[:password]
      position1 = (hash[:positions][0].to_i - 1)
      position2 = (hash[:positions][1].to_i - 1)
      a = password[position1]
      b = password[position2]
      if (a != b) && (a == hash[:letter] || b == hash[:letter])
        i += 1
      else
      end
    end
    return i
  end

  #metodos privados
  private

  def line_split()
    a = []
    csv.each do |array|
      s = []
      s = array[0].split(' ')
      h = {positions: s[0].split('-'), letter: s[1].delete_suffix(':'), password: s[2]}
      a << h
    end
    return a
  end

end