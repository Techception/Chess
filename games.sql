drop table if exists gamesTbl;

with input as (
select 0 as game, 0 as ply, 'rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1' as fen -- Start
union select 1 as game, 1 as ply, 'rnbqkbnr/pppppppp/8/8/4P3/8/PPPP1PPP/RNBQKBNR b KQkq e3 0 1' as fen -- 1.e4
union select 1 as game, 2 as ply, 'rnbqkbnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/RNBQKBNR w KQkq e6 0 2' as fen -- 1...e5
union select 1 as game, 3 as ply, 'rnbqkbnr/pppp1ppp/8/4p3/4P3/5N2/PPPP1PPP/RNBQKB1R b KQkq - 1 2' as fen -- 2.Nf3
union select 1 as game, 4 as ply, 'rnbqkb1r/pppp1ppp/5n2/4p3/4P3/5N2/PPPP1PPP/RNBQKB1R w KQkq - 2 3' as fen -- 2...Nc6
union select 1 as game, 5 as ply, 'rnbqkb1r/pppp1ppp/5n2/4p3/3PP3/5N2/PPP2PPP/RNBQKB1R b KQkq d3 0 3' as fen -- 3.d4
union select 1 as game, 6 as ply, 'rnbqkb1r/ppp2ppp/5n2/3pp3/3PP3/5N2/PPP2PPP/RNBQKB1R w KQkq d6 0 4' as fen -- 3...d5
union select 1 as game, 7 as ply, 'rnbqkb1r/ppp2ppp/5n2/3Pp3/4P3/5N2/PPP2PPP/RNBQKB1R b KQkq - 0 4' as fen -- 4.exd5
union select 1 as game, 8 as ply, 'rnbqkb1r/ppp2ppp/8/3np3/4P3/5N2/PPP2PPP/RNBQKB1R w KQkq - 0 5' as fen -- 4...Nxd5
union select 1 as game, 9 as ply, 'rnbqkb1r/ppp2ppp/8/3np3/4P3/2N2N2/PPP2PPP/R1BQKB1R b KQkq - 1 5' as fen -- 5.Nc3
union select 1 as game, 10 as ply, 'rnbqkb1r/ppp2ppp/8/4p3/4n3/2N2N2/PPP2PPP/R1BQKB1R w KQkq - 2 6' as fen -- 5...Ne4
union select 1 as game, 11 as ply, 'rnbqkb1r/ppp2ppp/8/4p3/4N3/5N2/PPP2PPP/R1BQKB1R b KQkq - 0 6' as fen -- 6.Nxe4
union select 1 as game, 12 as ply, 'rnbqkb1r/ppp2ppp/8/8/4p3/5N2/PPP2PPP/R1BQKB1R w KQkq - 0 7' as fen -- 6...exd4
union select 1 as game, 13 as ply, 'rnbqkb1r/ppp2ppp/8/8/4p3/5N2/PPP2PPP/R1BQK2R b KQkq - 1 7' as fen -- 7.Bg5
union select 1 as game, 14 as ply, 'rnbqk2r/ppp2ppp/8/8/4p3/5N2/PPP2PPP/R1BQK2R w KQkq - 2 8' as fen -- 7...Qxg5
union select 1 as game, 15 as ply, 'rnbqk2r/ppp2ppp/8/8/4p3/5N2/PPP2PPP/R1BQ1K1R b kq - 3 8' as fen -- 8.O-O
union select 1 as game, 16 as ply, 'rnb1k2r/ppp2ppp/8/8/4p3/5N2/PPP2PPP/R1BQ1K1R w kq - 4 9' as fen -- 8...Be7
union select 1 as game, 17 as ply, 'rnb1k2r/ppp2ppp/8/8/4p3/5N2/PPP2PPP/R1BQ1KR1 b kq - 5 9' as fen -- 9.Re1
union select 1 as game, 18 as ply, 'rnb1k2r/ppp2ppp/8/8/4p3/5N2/PPP2PPP/R1BQ1KR1 w kq - 6 10' as fen -- 9...O-O
union select 1 as game, 19 as ply, 'rnb1k2r/ppp2ppp/8/8/4p3/5N2/PPP2PPP/R1BQ1KR1 b - - 7 10' as fen -- 10.Nxd4
union select 1 as game, 20 as ply, 'rnb1k2r/ppp2ppp/8/8/4p3/5N2/PPP2PPP/R1BQ1KR1 w - - 8 11' as fen -- 10...Nxd4
union select 1 as game, 21 as ply, 'rnb1k2r/ppp2ppp/8/8/4p3/5N2/PPP2PPP/R1BQ1KR1 b - - 9 11' as fen -- 11.Bxe7
union select 1 as game, 22 as ply, 'rnb1k2r/ppp2ppp/8/8/4p3/5N2/PPP2PPP/R1BQ1KR1 w - - 10 12' as fen -- 11...Nxe7
union select 1 as game, 23 as ply, 'rnb1k2r/ppp2ppp/8/8/4p3/5N2/PPP2PPP/R1BQ1KR1 b - - 11 12' as fen -- 12.Qh5
union select 1 as game, 24 as ply, 'rnb1k2r/ppp2ppp/8/8/4p3/5N2/PPP2PPP/R1BQ1KR1 w - - 12 13' as fen -- 12...g6
union select 1 as game, 25 as ply, 'rnb1k2r/ppp2ppp/8/8/4p3/5N2/PPP2PPP/R1BQ1KR1 b - - 13 13' as fen -- 13.Qh6
union select 1 as game, 26 as ply, 'rnb1k2r/ppp2ppp/8/8/4p3/5N2/PPP2PPP/R1BQ1KR1 w - - 14 14' as fen -- 13...Re8
union select 1 as game, 27 as ply, 'rnb1k2r/ppp2ppp/8/8/4p3/5N2/PPP2PPP/R1BQ1KR1 b - - 15 14' as fen -- 14.Ng5
union select 1 as game, 28 as ply, 'rnb1k2r/ppp2ppp/8/8/4p3/5N2/PPP2PPP/R1BQ1KR1 w - - 16 15' as fen -- 14...Nf5
union select 1 as game, 29 as ply, 'rnb1k2r/ppp2ppp/8/8/4p3/5N2/PPP2PPP/R1BQ1KR1 b - - 17 15' as fen -- 15.Qxh7#
) select * into gamesTbl from input;

select * from gamesTbl
order by ply;