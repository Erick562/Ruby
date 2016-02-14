class Foo
  private
  def hoge
    p "hoge"
  end
end

class Bar < Foo
  # def hoge
  #   super
  # end
  public :hoge
end
#↑どっちもprivateを呼べる

Bar.new.hoge
