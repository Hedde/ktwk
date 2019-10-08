defmodule IslandsEngineTest do
  use ExUnit.Case
  doctest IslandsEngine

  alias IslandsEngine.Game

  test "greets the world" do
    assert IslandsEngine.hello() == :world
  end

  test "add_player" do
    {:ok, game} = Game.start_link("Jeff")
    Game.add_player(game, "Frank")
    assert :sys.get_state(game).player2.name == "Frank"
  end
end
