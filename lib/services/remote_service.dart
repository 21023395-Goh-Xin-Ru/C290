import 'package:c290_/models/post.dart';
import 'package:http/http.dart' as http;

class RemoteService {
  Future<List<Post>?> getPosts() async {
    var client = http.Client();

    var url =
        Uri.parse('https://demo20230211002225.azurewebsites.net/api/demo');
    var response = await client.get(url);
    if (response.statusCode == 200) {
      var json = response.body;
      return postFromJson(json);
    }
    return null;
  }
}
