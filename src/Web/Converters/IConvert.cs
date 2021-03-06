﻿using System.Collections.Generic;

namespace TrainingTask.Web.Converters
{
    public interface IConvert<TIn, TOut>
    {
        TOut Convert(TIn item);
        IList<TOut> ConvertAll(IList<TIn> items);
    }
}
