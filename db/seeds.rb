Movie.create(name: "The Big Lebowski")
StreamingService.create(name: "Hulu", url: "https://www.hulu.com")
MovieStreamingService.create(movie_id: 1, streaming_service_id: 2)

Movie.create(name: "Avengers: Infinity War")
StreamingService.create(name: "Netflix", url: "https://www.netflix.com")
MovieStreamingService.create(movie_id: 2, streaming_service_id: 1)

Movie.create(name: "Heathers")
MovieStreamingService.create(movie_id: 3, streaming_service_id: 1)
MovieStreamingService.create(movie_id: 3, streaming_service_id: 2)

StreamingService.create(name: "Amazon Prime", url: "https://www.amazon.com/gp/prime")
Movie.create(name: "Notting Hill")
MovieStreamingService.create(movie_id: 4, streaming_service_id: 1)
MovieStreamingService.create(movie_id: 4, streaming_service_id: 2)
MovieStreamingService.create(movie_id: 4, streaming_service_id: 3)

StreamingService.create(name: "ITunes", url: "https://www.apple.com/itunes/")
StreamingService.create(name: "HBO", url: "https://www.hbo.com/")

Movie.create(name: "Mean Girls")
MovieStreamingService.create(movie_id: 5, streaming_service_id: 4)

Movie.create(name: "13 Going on 30")
MovieStreamingService.create(movie_id: 6, streaming_service_id: 5)
