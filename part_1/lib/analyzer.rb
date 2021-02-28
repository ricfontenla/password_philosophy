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
      letters = hash[:password].count(hash[:letter])
      if (letters >= hash[:times][0].to_i && letters <= hash[:times][1].to_i)
        i += 1
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
      h = {times: s[0].split('-'), letter: s[1].delete_suffix(':'), password: s[2]}
      a << h
    end
    return a
  end

end