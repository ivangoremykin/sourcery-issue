//  Created by Ivan Goremykin on 21/02/2019.
//  Copyright © 2019 Tachos. All rights reserved.

import SwiftyJSON

let parseString = createRawValueParser { $0.string }
let parseBool   = createRawValueParser { $0.bool   }
let parseDouble = createRawValueParser { $0.double }
let parseFloat  = createRawValueParser { $0.float  }
let parseInt    = createRawValueParser { $0.int    }
let parseUInt   = createRawValueParser { $0.uInt   }
let parseUrl    = createRawValueParser { $0.url    }
