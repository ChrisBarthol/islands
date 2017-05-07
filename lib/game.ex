defmodule Islands.Game do
  use GenServer

  def handle_call(:demo, _from, state) do
    {:reply, state, state}
  end

  def call_demo(game) do
    GenServer.call(game, :demo)
  end

  #GenServer examples

  # def handle_info(:first, state) do
  #   IO.puts "This message has been handled by handle_info/2, matchin on :first."
  #   {:noreply, state}
  # end

  #async dont need from pid
  # def handle_cast(:demo, state) do
  #   {:noreply, %{state | test: "new value"}}
  # end

  # def cast_demo(pid) do
  #   GenServer.cast(pid, :demo)
  # end
end
