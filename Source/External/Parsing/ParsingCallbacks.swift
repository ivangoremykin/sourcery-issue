//  Created by Ivan Goremykin on 21/02/2019.
//  Copyright © 2019 Tachos. All rights reserved.

import SwiftyJSON

typealias ParseCallback<Item> = (JSON) -> Either2<ParsingTrace, Item>
typealias ParseTracingCallback<Item> = (JSON, ParsingTrace) -> OneXorBoth<ParsingTrace, Item>
