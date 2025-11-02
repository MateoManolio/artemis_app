/// Mock API responses from OpenAlex for testing
class ApiResponsesFixture {
  /// Returns a mock JSON response for a single article
  static Map<String, dynamic> singleArticleResponse() {
    return {
      'id': 'https://openalex.org/W4414161455',
      'doi': 'https://doi.org/10.1234/test',
      'title': 'Machine Learning for Scientific Discovery',
      'display_name': 'Machine Learning for Scientific Discovery',
      'publication_year': 2024,
      'language': 'en',
      'type': 'article',
      'open_access': {
        'is_oa': true,
        'oa_status': 'gold',
        'oa_url': 'https://example.com/article.pdf',
      },
      'authorships': [
        {
          'author': {
            'id': 'https://openalex.org/A123456789',
            'display_name': 'John Doe',
          },
          'institutions': [
            {
              'id': 'https://openalex.org/I123456789',
              'display_name': 'University of Test',
            }
          ],
        },
        {
          'author': {
            'id': 'https://openalex.org/A987654321',
            'display_name': 'Jane Smith',
          },
          'institutions': [
            {
              'id': 'https://openalex.org/I987654321',
              'display_name': 'Institute of Research',
            }
          ],
        },
      ],
      'primary_location': {
        'landing_page_url': 'https://example.com/article',
        'pdf_url': 'https://example.com/article.pdf',
      },
      'cited_by_count': 20,
      'referenced_works_count': 10,
      'fwci': 1.5,
      'citation_normalized_percentile': {
        'value': 75.0,
        'is_in_top_1_percent': false,
        'is_in_top_10_percent': true,
      },
      'topics': [
        {
          'id': 'https://openalex.org/T123',
          'display_name': 'Machine Learning',
          'subfield': {
            'display_name': 'Computer Science',
          },
          'field': {
            'display_name': 'Computer Science',
          },
          'domain': {
            'display_name': 'Computer Science',
          },
        },
        {
          'id': 'https://openalex.org/T456',
          'display_name': 'Artificial Intelligence',
          'subfield': {
            'display_name': 'Computer Science',
          },
          'field': {
            'display_name': 'Computer Science',
          },
          'domain': {
            'display_name': 'Computer Science',
          },
        },
      ],
      'related_works': [
        'https://openalex.org/W111',
        'https://openalex.org/W222',
        'https://openalex.org/W333',
      ],
      'apc_paid': {
        'value_usd': 1000.0,
      },
    };
  }

  /// Returns a mock JSON response for a list of articles
  static Map<String, dynamic> articlesListResponse({int count = 3}) {
    return {
      'meta': {
        'count': count,
        'db_response_time_ms': 10,
        'page': 1,
        'per_page': 25,
      },
      'results': List.generate(
        count,
        (index) => singleArticleResponse()
          ..['id'] = 'https://openalex.org/W441416145${5 + index}'
          ..['title'] = 'Article ${index + 1}'
          ..['display_name'] = 'Article ${index + 1}',
      ),
    };
  }

  /// Returns a mock empty response
  static Map<String, dynamic> emptyResponse() {
    return {
      'meta': {
        'count': 0,
        'db_response_time_ms': 5,
        'page': 1,
        'per_page': 25,
      },
      'results': [],
    };
  }

  /// Returns a mock error response (404)
  static Map<String, dynamic> error404Response() {
    return {
      'error': 'Resource not found',
      'message': 'The requested article does not exist',
    };
  }

  /// Returns a mock error response (429 - Too Many Requests)
  static Map<String, dynamic> error429Response() {
    return {
      'error': 'Too many requests',
      'message': 'Rate limit exceeded. Please try again later.',
    };
  }

  /// Returns a mock error response (500)
  static Map<String, dynamic> error500Response() {
    return {
      'error': 'Internal server error',
      'message': 'An unexpected error occurred',
    };
  }
}

