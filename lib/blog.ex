defmodule Blog do
  def image(path, html_opts \\ []) do
    opts = Enum.map(html_opts, fn {key, value} -> "#{key}=#{value}" end)

    """
    <img src="#{path}" #{opts} />
    """
  end

  def p(text) do
    """
    <p>#{text}</p>
    """
  end
end
