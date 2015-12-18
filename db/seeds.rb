movies = [{ title: 'Star Wars', 							release_date: '25-Apr-1977', rating: 'PG' },
					{ title: 'Requiem for a Dream', 		release_date: '27-Oct-2000', rating: 'R' },
					{ title: 'Field of Dreams', 				release_date: '21-Apr-1989', rating: 'PG' },
					{ title: 'Aladdin', 								release_date: '25-Nov-1992', rating: 'G' },
					{ title: 'When Harry Met Sally', 		release_date: '21-Jul-1989', rating: 'R' },
					{ title: 'The Help', 								release_date: '10-Aug-2011', rating: 'PG-13' },
					{ title: 'Raiders of the Lost Ark', release_date: '12-Jun-1981', rating: 'PG' }
				]

movies.each do |movie|
	Movie.create!(movie)
end