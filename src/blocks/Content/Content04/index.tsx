import { cn } from '@/utilities/ui'
import React from 'react'
import RichText from '@/components/RichText'

import type { ContentBlock } from '@/payload-types'

import { CMSLink } from '../../../components/Link'
import { Media } from '@/components/Media'

export const Content04: React.FC<ContentBlock> = (props) => {
  const { richText, list } = props

  return (
    <div className="bg-background-neutral w-full">
      <div className="section gap-md py-site flex flex-col">
        {richText && (
          <div className="pt-site w-full">
            <RichText
              className="prose-p:text-body-large -mx-auto max-w-8xl text-center"
              data={richText}
              enableGutter={false}
            />
          </div>
        )}
        {list && (
          <div className="gap-lg py-lg flex w-full flex-col">
            {list.map((item) => (
              <div
                key={item.id}
                className="gap-xl flex flex-col lg:flex-row even:lg:flex-row-reverse"
              >
                <div className="flex w-full flex-col items-start justify-center gap-4">
                  {item.tag && (
                    <span className="bg-zad-lime rounded-full px-3 py-1 text-sm font-bold text-stone-950">
                      {item.tag}
                    </span>
                  )}
                  <h3 className="text-start text-(length:--text-h3) font-bold text-(color:--color-zad-golden)">
                    {item.heading}
                  </h3>
                  {item.content && (
                    <RichText
                      className="prose-p:text-body-large m-0"
                      data={item.content}
                      enableGutter={false}
                    />
                  )}
                </div>
                <div className="relative h-auto w-full select-none">
                  <Media
                    className=""
                    imgClassName="w-full rounded-3xl h-auto"
                    resource={item.media}
                  />
                </div>
              </div>
            ))}
          </div>
        )}
      </div>
    </div>
  )
}
