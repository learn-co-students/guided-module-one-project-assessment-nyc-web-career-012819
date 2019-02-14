Movie.find_or_create_by(name: "The Big Lebowski")
StreamingService.find_or_create_by(name: "Hulu", url: "https://www.hulu.com")
MovieStreamingService.find_or_create_by(movie_id: 1, streaming_service_id: 2)

Movie.find_or_create_by(name: "Avengers: Infinity War")
StreamingService.find_or_create_by(name: "Netflix", url: "https://www.netflix.com")
MovieStreamingService.find_or_create_by(movie_id: 2, streaming_service_id: 1)

Movie.find_or_create_by(name: "Heathers")
MovieStreamingService.find_or_create_by(movie_id: 3, streaming_service_id: 1)
MovieStreamingService.find_or_create_by(movie_id: 3, streaming_service_id: 2)

StreamingService.find_or_create_by(name: "Amazon Prime", url: "https://www.amazon.com/gp/prime")
Movie.find_or_create_by(name: "Notting Hill")
MovieStreamingService.find_or_create_by(movie_id: 4, streaming_service_id: 1)
MovieStreamingService.find_or_create_by(movie_id: 4, streaming_service_id: 2)
MovieStreamingService.find_or_create_by(movie_id: 4, streaming_service_id: 3)

StreamingService.find_or_create_by(name: "ITunes", url: "https://www.apple.com/itunes/")
StreamingService.find_or_create_by(name: "HBO", url: "https://www.hbo.com/")

Movie.find_or_create_by(name: "Mean Girls")
MovieStreamingService.find_or_create_by(movie_id: 5, streaming_service_id: 4)

Movie.find_or_create_by(name: "13 Going on 30")
MovieStreamingService.find_or_create_by(movie_id: 6, streaming_service_id: 5)
