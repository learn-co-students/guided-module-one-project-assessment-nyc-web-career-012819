Movie.create(name: "The Big Lebowski")
StreamingService.create(name: "Hulu", url: "https://www.hulu.com")
MovieStreamingService.create(movie_id: 1, streaming_service_id: 1)

Movie.create(name: "Avengers: Infinity War")
StreamingService.create(name: "Netflix", url: "https://www.netflix.com")
MovieStreamingService.create(movie_id: 2, streaming_service_id: 2)

Movie.create(name: "Heathers")
MovieStreamingService.create(movie_id: 3, streaming_service_id: 1)
MovieStreamingService.create(movie_id: 3, streaming_service_id: 2)

StreamingService.create(name: "Amazon Prime", url: "https://www.amazon.com/gp/prime")
Movie.create(name: "Notting Hill")
MovieStreamingService.create(movie_id: 4, streaming_service_id: 1)
MovieStreamingService.create(movie_id: 4, streaming_service_id: 2)
MovieStreamingService.create(movie_id: 4, streaming_service_id: 3)
