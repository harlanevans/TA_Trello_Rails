
3.times do 
  board = Board.create(
    title: 
  ),
  5.times do 
    list = List.create(
      title:,
      description:,
      board_id: board.id,
    ),
    3.times do 
      Task.create(
        title:,
        description:,
        list_id: list.id
      )