import 'package:cinemapedia/domain/entities/actor.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/credits_response.dart';

class ActorMapper {
  static Actor castToEntity(Cast cast) => Actor(
        id: cast.id,
        name: cast.name,
        profilePatch: cast.profilePath != null
            ? 'https://image.tmdb.org/t/p/w500${cast.profilePath}'
            : 'https://imgs.search.brave.com/RT7FnjmhborPsC0JCdRPTh1Qj5c8zHl8hpdLixbdYpo/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvNTI2/OTQ3ODY5L3ZlY3Rv/ci9tYW4tc2lsaG91/ZXR0ZS1wcm9maWxl/LXBpY3R1cmUuanBn/P2I9MSZzPTYxMng2/MTImdz0wJms9MjAm/Yz1Lb245NGdmRGJp/WVRHOWt3TVprSXFq/NTQwaXlzV1lMUkpl/VUtiaHdDcXhVPQ',
        character: cast.character,
      );
}
