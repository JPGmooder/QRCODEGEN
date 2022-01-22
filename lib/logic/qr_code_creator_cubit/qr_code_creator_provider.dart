

part of "qr_code_creator_cubit.dart";

class QrCodeCreatorProvider {
  static Future<http.Response> getRawData(String codedQrCode) async =>
      await http.post(
          Uri.parse(
            "https://qrcode-monkey.p.rapidapi.com/qr/custom",
          ),
          body: json.encode(codedQrCode),
          headers: {
            "x-rapidapi-host": "qrcode-monkey.p.rapidapi.com",
            "x-rapidapi-key":
                "d862a79341msh61534c770de0580p1f8035jsn58fe9c809409"
          });
}
