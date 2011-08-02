class One
  def putsone
    puts 'one'
  end
end
class Test
   attr_accessor :test
   attr_accessor :one
   public
  def gettest
    puts test
    puts @test
    puts :test.object_id
    puts :@test.object_id
    puts @test.object_id
    puts :@test
  end
  
  def testone
    self.testprivate
    one.putsone
  end
  private
  def testprivate
    puts 'private'
  end
end
test=Test.new
one=One.new
test.one=one
test.one.putsone
test.testone

