defmodule Blog do
  def image(path) do
    """
    <img src="#{path}" />
    """
  end

  def p(text) do
    """
    <p>#{text}</p>
    """
  end
end
