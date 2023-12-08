object frmRelatorioPag: TfrmRelatorioPag
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frmRelatorioContasPAgar'
  ClientHeight = 349
  ClientWidth = 503
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnlCentral: TPanel
    Left = 0
    Top = 0
    Width = 503
    Height = 349
    Margins.Left = 5
    Margins.Right = 5
    Align = alClient
    Color = 13750737
    ParentBackground = False
    TabOrder = 0
    object pnlSubBot: TPanel
      AlignWithMargins = True
      Left = 6
      Top = 302
      Width = 491
      Height = 41
      Margins.Left = 5
      Margins.Top = 0
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alBottom
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object pnlNovoLanc: TPanel
        AlignWithMargins = True
        Left = 361
        Top = 5
        Width = 127
        Height = 31
        Margins.Left = 0
        Margins.Top = 5
        Margins.Bottom = 5
        Align = alRight
        BevelOuter = bvNone
        Color = 16024898
        ParentBackground = False
        TabOrder = 0
        object btnNovoLancamento: TSpeedButton
          Left = 0
          Top = 0
          Width = 127
          Height = 31
          Cursor = crHandPoint
          Align = alClient
          Caption = 'Confirmar'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = btnNovoLancamentoClick
          ExplicitTop = -2
        end
      end
      object pnlCancelar: TPanel
        AlignWithMargins = True
        Left = 231
        Top = 5
        Width = 127
        Height = 31
        Margins.Left = 0
        Margins.Top = 5
        Margins.Bottom = 5
        Align = alRight
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        object btnCancelar: TSpeedButton
          Left = 0
          Top = 0
          Width = 127
          Height = 31
          Cursor = crHandPoint
          Align = alClient
          Caption = 'Cancelar'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5855577
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = btnCancelarClick
          ExplicitLeft = 3
          ExplicitTop = -1
          ExplicitHeight = 30
        end
      end
    end
    object pnlSubTop: TPanel
      AlignWithMargins = True
      Left = 6
      Top = 6
      Width = 491
      Height = 51
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      object btnFechar: TSpeedButton
        AlignWithMargins = True
        Left = 440
        Top = 5
        Width = 46
        Height = 41
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alRight
        Flat = True
        Glyph.Data = {
          42090000424D4209000000000000420000002800000018000000180000000100
          20000300000000090000130B0000130B000000000000000000000000FF0000FF
          0000FF0000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000C30000
          00CC000000160000000000000000000000000000000000000000000000000000
          00000000000000000016000000CC000000C30000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000CA0000
          00FF000000D30000001600000000000000000000000000000000000000000000
          000000000016000000D3000000FF000000CA0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000150000
          00D2000000FF000000D700000018000000000000000000000000000000000000
          0015000000D2000000FF000000D7000000190000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0015000000D2000000FF000000D7000000180000000000000000000000150000
          00D2000000FF000000D700000019000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000015000000D2000000FF000000D70000001800000015000000D20000
          00FF000000D70000001900000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000015000000D2000000FF000000DA000000D6000000FF0000
          00D7000000190000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000015000000D6000000FF000000FF000000DB0000
          0019000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000015000000D6000000FF000000FF000000DB0000
          0018000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000015000000D2000000FF000000DA000000D6000000FF0000
          00D7000000180000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000015000000D2000000FF000000D70000001900000015000000D20000
          00FF000000D70000001800000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0015000000D2000000FF000000D7000000190000000000000000000000150000
          00D2000000FF000000D700000018000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000150000
          00D2000000FF000000D700000019000000000000000000000000000000000000
          0015000000D2000000FF000000D7000000180000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000CA0000
          00FF000000D30000001600000000000000000000000000000000000000000000
          000000000016000000D3000000FF000000CA0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000C30000
          00CC000000160000000000000000000000000000000000000000000000000000
          00000000000000000016000000CC000000C30000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000}
        OnClick = btnFecharClick
        ExplicitLeft = 673
        ExplicitTop = 0
        ExplicitHeight = 33
      end
      object Image1: TImage
        Left = 0
        Top = 0
        Width = 65
        Height = 51
        Align = alLeft
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000300000
          003008060000005702F987000000017352474200AECE1CE90000000467414D41
          0000B18F0BFC6105000000097048597300000EC100000EC101B8916BED000000
          3B74455874436F6D6D656E740078723A643A444146304451314C362D383A382C
          6A3A323939393830363433323638393236323335332C743A3233313131333134
          18B52183000004DB69545874584D4C3A636F6D2E61646F62652E786D70000000
          00003C783A786D706D65746120786D6C6E733A783D2761646F62653A6E733A6D
          6574612F273E0A20202020202020203C7264663A52444620786D6C6E733A7264
          663D27687474703A2F2F7777772E77332E6F72672F313939392F30322F32322D
          7264662D73796E7461782D6E7323273E0A0A20202020202020203C7264663A44
          65736372697074696F6E207264663A61626F75743D27270A2020202020202020
          786D6C6E733A64633D27687474703A2F2F7075726C2E6F72672F64632F656C65
          6D656E74732F312E312F273E0A20202020202020203C64633A7469746C653E0A
          20202020202020203C7264663A416C743E0A20202020202020203C7264663A6C
          6920786D6C3A6C616E673D27782D64656661756C74273E44657369676E207365
          6D206E6F6D65202D20313C2F7264663A6C693E0A20202020202020203C2F7264
          663A416C743E0A20202020202020203C2F64633A7469746C653E0A2020202020
          2020203C2F7264663A4465736372697074696F6E3E0A0A20202020202020203C
          7264663A4465736372697074696F6E207264663A61626F75743D27270A202020
          2020202020786D6C6E733A4174747269623D27687474703A2F2F6E732E617474
          7269627574696F6E2E636F6D2F6164732F312E302F273E0A2020202020202020
          3C4174747269623A4164733E0A20202020202020203C7264663A5365713E0A20
          202020202020203C7264663A6C69207264663A7061727365547970653D275265
          736F75726365273E0A20202020202020203C4174747269623A43726561746564
          3E323032332D31312D31333C2F4174747269623A437265617465643E0A202020
          20202020203C4174747269623A45787449643E34323366343638642D36316135
          2D343465382D383139622D6536663532373562313533623C2F4174747269623A
          45787449643E0A20202020202020203C4174747269623A466249643E35323532
          36353931343137393538303C2F4174747269623A466249643E0A202020202020
          20203C4174747269623A546F756368547970653E323C2F4174747269623A546F
          756368547970653E0A20202020202020203C2F7264663A6C693E0A2020202020
          2020203C2F7264663A5365713E0A20202020202020203C2F4174747269623A41
          64733E0A20202020202020203C2F7264663A4465736372697074696F6E3E0A0A
          20202020202020203C7264663A4465736372697074696F6E207264663A61626F
          75743D27270A2020202020202020786D6C6E733A7064663D27687474703A2F2F
          6E732E61646F62652E636F6D2F7064662F312E332F273E0A2020202020202020
          3C7064663A417574686F723E686964656B693C2F7064663A417574686F723E0A
          20202020202020203C2F7264663A4465736372697074696F6E3E0A0A20202020
          202020203C7264663A4465736372697074696F6E207264663A61626F75743D27
          270A2020202020202020786D6C6E733A786D703D27687474703A2F2F6E732E61
          646F62652E636F6D2F7861702F312E302F273E0A20202020202020203C786D70
          3A43726561746F72546F6F6C3E43616E76613C2F786D703A43726561746F7254
          6F6F6C3E0A20202020202020203C2F7264663A4465736372697074696F6E3E0A
          20202020202020203C2F7264663A5244463E0A20202020202020203C2F783A78
          6D706D6574613E868ECA6A000010A14944415478DAED59097454559ABEDB7BB5
          6521954A5512204159944D116C75C6E3A04EF71C66644980D06AEBB1695B70B0
          35098B208E1D82AD4D13C2AE88CBB1EDC6D6268184283D6E3D47DA1907175430
          045C501202495565AB4A52F5EABDBBCCFF0A9246A48728CCF178CEDC93732AE7
          BDFBEEBBDFBF7CFFF7DF87D1F77CE0EFEAC5436697BAE2ECE28C619FE9E17DFB
          E65BDF3B00D905EB662AA76B06B6AC4DAD3BEE7DFFFB05A0AC8C04EABD9BB0EE
          FAB1328D95C1B61D8FA33D7BF8FF1D80A2ED146D2F9208637541004CDAAAF987
          C55E20D451A884F18476FCD8E2E6BDEBE25F9933B98C65F9B37C0E95A0CD7868
          2BAA9A23BE35005FE1DA1C9743C3C75EBCF7C405015054A6FB65FA1F0873CE92
          56BC0A77CBB9C1D797F4F6E30380C7F2CCA944C3774ACB6C4A619E07BEA89A1F
          F9D60006CDACC8D7111DC9153DDC5153DC7CDE00C0BA7E6FFA534477FE549AB1
          3FF1B8764BC72BC5D193E0B6D32CD9388312E74AC2F4B196653C81C21D4BC27B
          CA7BBE350034699EE61F32EA1F1466A32553AFB757977E729E107060D6DA8731
          752C5396F1A646D19CE6EA451DF60D7FE1AA6B1075AD679AEB6A61C50E4B8CEE
          0A5795FC17DC3A6BF80E38890333D60D5358AEC4840415525B04B7C27DF7F4EC
          41A225E78481CACBE540D7F3CFDA781BA1780B84C8074C25669EA85DDE9E51B4
          2A5D93FAA354732F50927771D378D8AF756F6EA82A37FFA625060CA0B0C22F11
          2D02438C538ABC8785F509A79A64441182314714F712E58AC64C3D1A9970347A
          2E30FE59EB2FC34AEC444AB618269F1ED9FD40A7AF60CD54AA391F2794E50A33
          FE3856FC57C19A25A1FFD5955FBB52B45DCF4C7CE9688FC42CB4A7DCE8BB0C8B
          8F428A043051D90ADC2035744021D1A31B946245DC9CC9F118E17C8CD1094554
          3D55E47802C74D673CC36A716524CE6411EF4FCAD2686FCA6A82D030B347FCB8
          33635F4F405EBB1A6B8E62B07E8DE88D2D6FDBBDF4B37319B61FC01860862E33
          3590202C1B53EC461CF568DC79A8E5E5F9B1CCE9BF4925845E2E250D636A7A88
          D0BC9CA8A89BA18F9BAB161A93AF5F411BD2B28651262648253330163A52AC51
          2ADC4130E7DCA5A22ECBD32D3492D0633AF7E847637658644D5B7B2DA1F2BA60
          7AE6FA404F7038D6D2D62A446228D1FD1058BE7E20917112405919CBF9387384
          A512C31161122B1A95C8D289109D1A761D8B230ED6171827BAEB594A5A3E4E60
          89180A50293F3BB16BF1317B898B217EA3C835C27E06639C65499C464C749430
          E194946440986918920856E1585A51D3349B06BB87F7B6192732422F9504FD05
          AB6720CAA681179F0AEE287DA76F83B6F1E02795615D273A965A2CDEDDB47B59
          176C5DF503B01394537991A4D61164A62AA7B070C2895398105720818242435D
          ED4EFA297AFEBEEEACA2F5975B82771249023A2299ADB55DAF22542E73A696B9
          95237D8C655927DA235785BCE91F4D22847027E30D69382A1AD0583424722C25
          9A86BCBA297309A2B021BABFB5BA384906816915170132BDBD6EA9CD7038B760
          CD48C1D84445D96598CB9150437D08330119F79952E673A1EDC5364885D1BCAD
          5AA0353A91331C69DFB9F8707F8CCEDE32985AF11B154107DB6A4A3F4C220609
          E0DBEFBD22817A8F6AC8E567984F2171735BEB2B0F86EDEAEA1B6A5CA62B2B64
          7B257DC6BA4154A92B29A15F866B8B8FD800737373AD7D4F82708370F521EF78
          655A83209D1ADAB23C6DE8C99382CE260B45F03F12A4CD85FDDD0072832537D4
          47A28486A5E4E597B6B46CDDB3A79CE3CCE94FA712AD6BBC90BCA9A366D96945
          4AC1BDD5A328D1BDBAD5DB8435DD19631AA3025D2295388C6165A2CC7F1614D5
          B7ED58BCDB7EC057B0611275C8F6E01F4B8FDA2BA483551926C318951833D70F
          3161F554F4D600E7C7D1EC4A971F6B0504BB6E50BCFBA5E0CE852FD906F2D7A7
          4F83109C8BB0361849C120740552CA50084730A147E1F72370C4EB7DEFC0B6E5
          32F3E21330CCF674441A1AFB984729EC9BB57A0496643C808F53A91B82581E70
          7D2A2C1A57448379220526FA219E5FB06930AB68DD049940F1F6BA53850ED6F0
          17AC1D8708FA37E64E2F82DAB18FF7762E687F79F97BF6BB03376F9D4B30790A
          AAF12E33E29CDBF9C6FC484ED1AA3CCB7265612585C5E0ED42599A427127425D
          8DFADBDDA8AAEA2B6C96CC01CFB4F50117C59742521A9869AD1450C785994608
          CB875DA40A459B2515AD48E00EA64CA169E812219D3EA4E116C98DB14CE90782
          3525F5BE824DA31092A99ECEB4838D7BE61A7DF40BEBFC9E395C578944AF2184
          F845DBAE25CFD8EFCE2ADC783BD5C873B08BFD56DCFC797BDDC2F74FED69C0A2
          B19F46536ED9EA73C58C5120155CE07625C16D542A8B4BE94458C68036DBBA76
          2E69B4E70E995DE935051AC5058B429E66D9C0359D1CE8D64DA7D6EB18C7B4F8
          E1D6EA07C32759A4F206CAC88B84313F78C4FE5B1BEC51CBD12BC589CC1915D7
          33466B307318CA8C950275BE38D08D7F0D407280C842A9B97A605014078FF524
          BC5E6F36C1F26249E41137421DC9D885201C32B532D760F862600443672868F1
          840F42AC23B8ABF428587C12D0B008ED2AD93FB66885161699C550171E4112AA
          024DE6E33B925BCB498AFA5046AC1CA4397F075E9F844CE39150ED9295E707E0
          8C61CB68A8B2C3C3063E80FAD4A2CD5AA19E2B38256E828839A6EDB277EBB33E
          1A2E20A6BA6A16EDF7008BB8119948B13C4404F0BEC6D643E5BE0959897731D3
          D394928395B45622A9BD054541630E5C02C06E1556621BB322F35B5E2E8F5D30
          003953B7BA13AC671CE6140A64E2308B13C8743C1836340412189EC6276CEACD
          98BA3E4F67221BF5CA83C1D717C77C33378C1096F43BB0CA951AA9006DE3026D
          B382527DB444EA2ED03F77F2447C0FD33C7940997750C6E62BA5DEB294717747
          F592860B06C01EDE8275A32125AE24887D41953421BF53B886BB41BEB9846E1E
          E8AC5A16C999BAC627181D29246B6CAF3BD9F4401D18E624F2E760F50721EA8E
          4861DC8324BA8232BD1C426F158AC77F2B400B62440B31D17F0915B89D8BD8BD
          ED354BEB2E1880C08F2A3C561A1B0794E6C64A8F108A2C2E64275372A820B4B3
          9D667F668BB4ACC99B537086355E31190E572FFADC7ED696004CD7CB89E62E15
          89F83B42C9E5400A9711A7EB7E60C8060899F50CF12342B13CA2E9ABC19B6394
          155F1AAABD7FED850160F7A4DEB4B1102EE9D4CDF705B72DB16353D9E102A2ED
          22508C1F40D9EFB6A78EB8778323DACCAF00E6EA68AB5DFCE92900B944733CC7
          74E70FB9D1FB8414FC7EA6B3D198BA37282BE1E33C710B3CFFBE7FDA2301E448
          DD08327A8E48F43CAE13B5384916E70B20A3686B3AB26263B0259B3A762F3A6E
          5FCBBFA3CC198BA45E09F5A035FCD2494B9FBCFEAC331E8F4E90A6D50FC05F58
          099D15AD82EAEB53A6591CAA5DF82402A081E3E26988F71958CAE9C15D4BDEB4
          654540663E481DCE5F0AD37845C5F93DA1DD0BBF386F0039F3CADCD168466AEF
          8B257643912C2CBE99BF1909B1EA47D4BD3F5CF58BFE1ED5D63D3A12632CAA8E
          9FAA15D83F73C35D9892CDC0FBCD989B37076B17BD9B0CCB996B9661E65C0E79
          511CDC7ECF6FEDB5B36656DC0EB9F12CE4C3A79611BFBBAD6EC95FCE3F84CE18
          7698743589AB1488B5538AB17F644EDF940BD5DBE78A767E9A9422D04307F2C7
          3C8635ED2E691AAF1A347A6BB4BA3CD9F366176E98825D9ECD529A2F3A5B82BF
          B2E7FBA63E32993953000CF1496EFE6BA876D1B6B34504815E64589A1EDEF7E4
          5F4FF2CE0E60CA06479A747BA2AF3577D952D9BE34E8D6CDF95ACC18EAB2DC07
          9B762FE83C7DBA2DE2A03B1B4229F912CBCE56A40FB21BA2EDD83E04E0BC2C54
          5BDA9F98DEC20D43349D5529CE1B75CC17D8CD7CE6F4959768BA771362EC47D2
          8C978576963CDCA7F7930AB83EF572A2683EE458939F45EA4FEF91CF0A20E796
          353ED3601765C4F181CFA1E4DB8B64D6FB260A6C26BAAA17D6F72F6E87CF4D8F
          6768BAF153E0FAE9208D4D24F897525AF02FBB196EDB8DC73DC14CD7ABA8DF6A
          0A67CD58F33428CE1154E3B7B7542D6B0269E2B2A4B692381C8BA1C9FFBD11EF
          2976636F42B2C438C5C84829E27E24C9271E44DE6EDC55DA75CE100ADC56E1E7
          DD688C4B23EFD88C906C29353A1EF4FDF1D6537A28390FAA2E528E619632AFD6
          75D732EA4ECD9546379296915C1992153C455F071A3E047DC57124551072A203
          94EF5498F04F88A8FBADA87C4F4FA50EC889F984692BA5900791E4DB11D1C008
          D80BD78F2B2EDE1ADDD9F59EADFF079403E937FD3A833176B94B1B74A0B9FAAE
          0EEFECCAC14CA0A13A459FF69DDFB8EDD33AAC2EC55C75491D8798A437234D9B
          03097B2928D2343BEDB1BD3C140FA05C9042D26E35DB1175409F8C1C209687C2
          BDBDA0F19B61830EA41297C2FCABE029098FBE0D3DEB7FC2A3EF19C8B3270A7B
          F846493CE41A7069361A8F25EB69AD2B6EF0DFF4EB8BA5A665B475761FB44F2A
          02B3375E64293E52701ECACA731CFA7C138419E48D5797131853F33026B7628C
          9C49101AEC4D584858C67142E8FB4873B51250F0CA32AE858A6C81A50F80C53B
          15B7A035209341178D80BEA19C354557B7EC3BB72EFA9B2C64F7C982F23C3FCD
          DF1B368EE561825CA109D183991FBAB309718E03B386C25DB5F5679E2A67CDAA
          5C01D267A9E2E6BBD0233580541EAB94188FECB323CCDE14567C0795642FC2FC
          6776BA718E2B7594DA8499E992545640E73757F2C4DA544767F9E7CF9747BF3D
          80DB2A3C328E2F578A85A1182966182CC1B5139A474E545CB68FEE8A1E3A3326
          6D4F1157CAD30AE3BF073ABC4D8AB457751A1D09CDFAD584B9AE831CB816116C
          57D91D2AD1D3016FCFD7195BD11796818235CB90EE781492E72F449877B79CD6
          A37F6300496B4EAB1C01319B8D94D503811987D875819B9D2196F30168A0AF1D
          F7050A2BE712CDB30A64C2C7BC273AB7F3B5878EF5DDF34ED9300434E964AC7B
          A620615E03891D07CFB41A1A9E1739D5DFFA0A2AE650DDF9183019D8C8B8B9BD
          E681FF382F0036BD19028FB65D0DB2B717B81D31C21BCE76DC975AF068A6474F
          7B0C58E65F94E0778776E6FE11A1AF9FE92795ABC6AE8326E627088B1F4076AF
          0C56973C930409F243D79C5B207F262850AFADD58BB6A073B497E7ACC4F92013
          62484D03D7E782947EADADAE7B7F5F713B7D4027760BD3DC1B8144F6765BF13B
          7BCF71A609C61921A87331F46963819196867714BF9D55B4391B3A8EADD4E999
          2E133D2FC42DB52032689091138B8E8D99F248E48C1A302000A742690AA27802
          57F2F9CE5327715FB56A599EF4E46CC14A4D02BA59D0BAE3BE9D0359377BCE63
          3F0069BD4D09F3BF13B2BB2432614534F0716525E44B09803A06ADE783C8E94A
          A1442F9056CFEF42D50B9FFF5600ECD69248793594FA2F423B4A3E3EDDADF681
          95F0F84B29D1EE0579F09CD97DE8918E57369D933DEC71B210A2B550AC86C2EF
          CAD0AEC57F0ECCA8B813EB5A256C2D5D0A751061924A989E071E7936D4F9D2BC
          33596FC062CEEECC34AC6E84279A88CFF3E79627E7C752209E53DCEE3B10D5E6
          299ED88B7B3B7FD9FAA7871A07BAA69D6309A17E069B9F03456C1B88B8A702D3
          568D554ED73394B0AB2197A01042D550124A85B539C4DE2939EBB9D0800634F3
          59A1DE1B80856E54185918BA12A5E868B0CE44A0D9B7493CBEFA44DD37FF7293
          396BDDF54488554AE23FB4D52DDA983C9D3B90761F61F4014C753FEC1D5895EF
          5309BE2C54B7F08D339FFF669F598BB6D3806A9D2491984C941A6E0712746C1F
          599CEF3E5B6E0C64F8A73D1540ACA74061551FDEB9D0FE9484B2676FC802262A
          54D8F17708895EB0D5BFA7C6E91B4961795E004E8D9C795BDD3212F32393C7CE
          F505E59C43299C7FFD0A4723E84D74FAA724E82906E78D0D088A127D27D8671B
          DFD997FA0B35FE1FC0773DBEF700FE07650E6AA9A36DD5C00000000049454E44
          AE426082}
        ExplicitLeft = 8
        ExplicitHeight = 43
      end
      object lblNomeEmpresa: TLabel
        Left = 63
        Top = 13
        Width = 60
        Height = 21
        Caption = 'Al Nutri'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8011008
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object pnlSubCentral: TPanel
      AlignWithMargins = True
      Left = 6
      Top = 62
      Width = 491
      Height = 235
      Margins.Left = 5
      Margins.Top = 0
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 2
      object lblDataInicial: TLabel
        Left = 40
        Top = 45
        Width = 57
        Height = 13
        Caption = 'Data Inicial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object lblDataFinal: TLabel
        Left = 40
        Top = 125
        Width = 52
        Height = 13
        Caption = 'Data Final'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object dtpDataIni: TDateTimePicker
        Left = 40
        Top = 64
        Width = 186
        Height = 21
        Date = 45243.000000000000000000
        Time = 0.714888263886678000
        TabOrder = 0
      end
      object dtpDataFin: TDateTimePicker
        Left = 40
        Top = 144
        Width = 186
        Height = 21
        Date = 45243.000000000000000000
        Time = 0.714888263886678000
        TabOrder = 1
      end
      object rgpTipoRelatorio: TRadioGroup
        Left = 280
        Top = 45
        Width = 185
        Height = 120
        Caption = 'Tipo Relatorio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5855577
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        Items.Strings = (
          '1 - Todos'
          '2 - Fechados'
          '3 - Abertos')
        ParentFont = False
        TabOrder = 2
      end
    end
  end
  object dsRelatorio: TDataSource
    DataSet = cdsRelatorio
    Left = 166
    Top = 14
  end
  object cdsRelatorio: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'DATAINI'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'DATAFIN'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'situacao'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspRelatorio'
    Left = 198
    Top = 14
    object cdsRelatoriolancamento: TLargeintField
      FieldName = 'lancamento'
      Origin = 'lancamento'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsRelatoriodatavencimento: TDateField
      FieldName = 'datavencimento'
      Origin = 'datavencimento'
    end
    object cdsRelatoriovalor: TBCDField
      FieldName = 'valor'
      Origin = 'valor'
      Precision = 15
      Size = 2
    end
    object cdsRelatorioformapgto: TWideStringField
      FieldName = 'formapgto'
      Origin = 'formapgto'
      Size = 8190
    end
    object cdsRelatorioidfornecedor: TIntegerField
      FieldName = 'idfornecedor'
      Origin = 'idfornecedor'
    end
    object cdsRelatorionomefornecedor: TWideStringField
      FieldName = 'nomefornecedor'
      Origin = 'nomefornecedor'
      Size = 8190
    end
    object cdsRelatoriodatapgto: TDateField
      FieldName = 'datapgto'
      Origin = 'datapgto'
    end
    object cdsRelatoriosituacao: TWideStringField
      FieldName = 'situacao'
      Origin = 'situacao'
      Size = 1
    end
    object cdsRelatoriodescricao: TWideStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 255
    end
  end
  object dspRelatorio: TDataSetProvider
    DataSet = qryRelatorio
    Left = 230
    Top = 14
  end
  object qryRelatorio: TFDQuery
    Connection = dm.FDConnection
    SQL.Strings = (
      'SELECT *'
      'FROM contaspagar c'
      'WHERE c.datavencimento BETWEEN :DATAINI AND :DATAFIN'
      'AND ('
      '    (:situacao = 0 AND c.situacao IN ('#39'a'#39', '#39'f'#39'))'
      '    OR (:situacao = 1 AND c.situacao = '#39'f'#39')'
      '    OR (:situacao = 2 AND c.situacao = '#39'a'#39')'
      ')')
    Left = 262
    Top = 14
    ParamData = <
      item
        Position = 1
        Name = 'DATAINI'
        DataType = ftDate
      end
      item
        Position = 2
        Name = 'DATAFIN'
        DataType = ftDate
      end
      item
        Position = 3
        Name = 'situacao'
        DataType = ftInteger
      end>
  end
  object ppRelatorio: TppReport
    AutoStop = False
    DataPipeline = ppDbRelatorio
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    RTFSettings.AppName = 'ReportBuilder'
    RTFSettings.Author = 'ReportBuilder'
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    RTFSettings.Title = 'Report'
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    CloudDriveSettings.DropBoxSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 334
    Top = 14
    Version = '22.0'
    mmColumnWidth = 197300
    DataPipelineName = 'ppDbRelatorio'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 11906
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = 'Relatorio Contas a Pagar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 79506
        mmTop = 5556
        mmWidth = 37306
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'lancamento'
        DataPipeline = ppDbRelatorio
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDbRelatorio'
        mmHeight = 3968
        mmLeft = 0
        mmTop = 265
        mmWidth = 10528
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'datavencimento'
        DataPipeline = ppDbRelatorio
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDbRelatorio'
        mmHeight = 3968
        mmLeft = 14898
        mmTop = 265
        mmWidth = 17007
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'descricao'
        DataPipeline = ppDbRelatorio
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDbRelatorio'
        mmHeight = 3969
        mmLeft = 34742
        mmTop = 265
        mmWidth = 69721
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'datapgto'
        DataPipeline = ppDbRelatorio
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDbRelatorio'
        mmHeight = 3969
        mmLeft = 106443
        mmTop = 265
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'valor'
        DataPipeline = ppDbRelatorio
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDbRelatorio'
        mmHeight = 3969
        mmLeft = 161900
        mmTop = 265
        mmWidth = 23724
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'formapgto'
        DataPipeline = ppDbRelatorio
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDbRelatorio'
        mmHeight = 3969
        mmLeft = 126019
        mmTop = 265
        mmWidth = 19667
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'situacao'
        DataPipeline = ppDbRelatorio
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDbRelatorio'
        mmHeight = 3969
        mmLeft = 150531
        mmTop = 265
        mmWidth = 5027
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakName = 'idfornecedor'
      DataPipeline = ppDbRelatorio
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDbRelatorio'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 11377
        mmPrintPosition = 0
        object ppDBText1: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText1'
          Border.mmPadding = 0
          DataField = 'idfornecedor'
          DataPipeline = ppDbRelatorio
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDbRelatorio'
          mmHeight = 3969
          mmLeft = 529
          mmTop = 794
          mmWidth = 2650
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine1: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line1'
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 3969
          mmLeft = 3306
          mmTop = 2646
          mmWidth = 1841
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText2: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText2'
          Border.mmPadding = 0
          DataField = 'nomefornecedor'
          DataPipeline = ppDbRelatorio
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDbRelatorio'
          mmHeight = 3969
          mmLeft = 5292
          mmTop = 794
          mmWidth = 88937
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel2: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label2'
          Border.mmPadding = 0
          Caption = 'Lanc'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3705
          mmLeft = 1058
          mmTop = 7408
          mmWidth = 6880
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel3: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label3'
          Border.mmPadding = 0
          Caption = 'Dt Vencimento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3704
          mmLeft = 12083
          mmTop = 7408
          mmWidth = 21431
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel4: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label4'
          Border.mmPadding = 0
          Caption = 'Descri'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3705
          mmLeft = 59531
          mmTop = 7408
          mmWidth = 14288
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel5: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label5'
          Border.mmPadding = 0
          Caption = 'Data Pgto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3705
          mmLeft = 106627
          mmTop = 7408
          mmWidth = 13494
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel6: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label6'
          Border.mmPadding = 0
          Caption = 'Forma Pgto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3704
          mmLeft = 127003
          mmTop = 7408
          mmWidth = 16669
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel7: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label7'
          Border.mmPadding = 0
          Caption = 'Situa'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3705
          mmLeft = 146933
          mmTop = 7408
          mmWidth = 12170
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel8: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label8'
          Border.mmPadding = 0
          Caption = 'Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3705
          mmLeft = 168275
          mmTop = 7408
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 4498
        mmPrintPosition = 0
        object ppLabel9: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label9'
          Border.mmPadding = 0
          Caption = 'Valor Total:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3704
          mmLeft = 143140
          mmTop = 529
          mmWidth = 16404
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc1: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc1'
          Border.mmPadding = 0
          DataField = 'valor'
          DataPipeline = ppDbRelatorio
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppDbRelatorio'
          mmHeight = 3969
          mmLeft = 161925
          mmTop = 529
          mmWidth = 23813
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
      end
    end
    object raCodeModule2: TraCodeModule
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppDbRelatorio: TppDBPipeline
    DataSource = dsRelatorio
    UserName = 'DbRelatorio'
    Left = 302
    Top = 14
    object ppDbRelatorioppField1: TppField
      FieldAlias = 'lancamento'
      FieldName = 'lancamento'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 0
      Position = 0
    end
    object ppDbRelatorioppField2: TppField
      FieldAlias = 'datavencimento'
      FieldName = 'datavencimento'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 1
    end
    object ppDbRelatorioppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'valor'
      FieldName = 'valor'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 2
    end
    object ppDbRelatorioppField4: TppField
      FieldAlias = 'formapgto'
      FieldName = 'formapgto'
      FieldLength = 8190
      DisplayWidth = 8190
      Position = 3
    end
    object ppDbRelatorioppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'idfornecedor'
      FieldName = 'idfornecedor'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object ppDbRelatorioppField6: TppField
      FieldAlias = 'nomefornecedor'
      FieldName = 'nomefornecedor'
      FieldLength = 8190
      DisplayWidth = 8190
      Position = 5
    end
    object ppDbRelatorioppField7: TppField
      FieldAlias = 'datapgto'
      FieldName = 'datapgto'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 6
    end
    object ppDbRelatorioppField8: TppField
      FieldAlias = 'situacao'
      FieldName = 'situacao'
      FieldLength = 1
      DisplayWidth = 1
      Position = 7
    end
    object ppDbRelatorioppField9: TppField
      FieldAlias = 'descricao'
      FieldName = 'descricao'
      FieldLength = 255
      DisplayWidth = 255
      Position = 8
    end
  end
end
